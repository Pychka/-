using System;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml.Linq;
using SharedObjects.Entities;
namespace Client
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            List<SubunitDTO> subunits = [
                new SubunitDTO(){
                Title = "1. Основа",
                Id = 1
            },
            new SubunitDTO(){
                Title = "1.1. ПодОснова",
                Id = 2
            },
                        new SubunitDTO(){
                Title = "1.1.2. ПодПодОснова",
                Id = 5
            },
            new SubunitDTO(){
                Title = "1.2.1. ПодПодОснова",
                Id = 6
            },
            new SubunitDTO(){
                Title = "1.2.2. ПодПодОснова",
                Id = 7
            },
            new SubunitDTO(){
                Title = "1.2. ПодОснова",
                Id = 3
            },
            new SubunitDTO(){
                Title = "1.1.1. ПодПодОснова",
                Id = 4
            },

            ];
            List<ParentSubunit> roots = Create.CreateTree(subunits)!;
            var g = new Draw();

        }
    }
    public class Draw
    {

    }
    public class Create
    {
        public static List<ParentSubunit> CreateTree(List<SubunitDTO> subunits)
        {
            subunits = [.. subunits.OrderBy(x => x.Title)];
            Dictionary<string, ParentSubunit> node = [];
            var roots = new List<ParentSubunit>();
            foreach (var subunit in subunits)
            {
                string? key = GetParent(subunit.Title!);
                ParentSubunit PS = new()
                {
                    SubunitDTO = subunit
                };
                if(key != null && node.TryGetValue(key.Contains('.') ? key.Remove(key.LastIndexOf('.')) : key, out ParentSubunit? value))
                    value.Childrens.Add(PS);
                else
                    roots.Add(PS);
                node.Add(key, PS);
            }
            string result = "";
            

            return roots;
        }
        public static void PrintHierarchy(ref string result, List<ParentSubunit> nodes, string indent = "")
        {
            foreach (var node in nodes)
            {
                result += ($"{indent}{node.SubunitDTO.Title} (Id: {node.SubunitDTO.Id})\n");
                if (node.Childrens.Any())
                    PrintHierarchy(ref result, node.Childrens, indent + "    ");
            }
        }
        public static string? GetParent(string title)
        {
            var lastDot = title.Split(' ');
            return lastDot.Length > 1 ? lastDot[0].Remove(lastDot[0].LastIndexOf('.')) : null;
        }
    }
    public class ParentSubunit
    {
        public SubunitDTO SubunitDTO { get; set; }
        public List<ParentSubunit> Childrens { get; set; } = [];
    }
}
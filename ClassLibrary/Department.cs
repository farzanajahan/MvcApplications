using System;
using System.Reflection;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace ClassLibrary
{
    public class Department
    {
        public string GlobalDeptName;

        public static IEnumerable<Department> LoadFromFile()
        {

            return LoadFromFile(Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), "departments.csv"));
        }
        public static IEnumerable<Department> LoadFromFile(string path)
        {
            StreamReader sr = new StreamReader(path);
            var lst = new List<Department>();
            
            while (!sr.EndOfStream)
            {
                lst.Add(new Department() { GlobalDeptName = sr.ReadLine() });
            }

            return lst;
        }
    }

    
}
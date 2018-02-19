using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MvcApplication.Controllers;
using ClassLibrary;
using System.IO;
using System.Web.Mvc;

namespace MvcApplication.Tests
{
    [TestClass]
    public class AuthnticationControllerTest
    {
        [TestMethod]
        public void positive()
        {
            //AuthenticateController DC = new AuthenticateController();
            var result = Authenticator.Authenticate("farzanajahan", "123").Error;
       
            
            //Assert
            Assert.AreEqual(false, result);
        }

        [TestMethod]
        public void negative()
        {
        
        //Act

            bool result = Authenticator.Authenticate("sivaravula", "234").Error;

            //Assert
            Assert.AreEqual(true, result);
        }
    }

    [TestClass]
    public class DepartmentsControllerTest
    {
        [TestMethod]
        public void TestDetailsView1()
        {
            var controller = new DepartmentsController();
            var result = controller.TestView(2) as ViewResult;
            Assert.AreEqual("DepartmentsView", result.ViewName);

        }
    

    [TestMethod]
        public void TestDetailsView2()
        {
            var controller = new DepartmentsController();
            String path = Path.GetFullPath("departments.csv");
            var result = controller.TestDepartment(path) as ViewResult;
            var dept = (List<ClassLibrary.Department>)result.ViewData.Model;
            Assert.AreEqual(true, dept.Exists(r => r.GlobalDeptName == "ANCILLARY SUPPORT"));

        }
    }

    }


using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MvcApplication.Controllers;
using ClassLibrary;

namespace MvcApplication.Tests
{
    [TestClass]
    public class MvcApplicationOpTest
    {
        [TestMethod]
        public void positive()
        {
            //AuthenticateController DC = new AuthenticateController();
            var result = Authenticator.Authenticate("sivaravula", "Bahubali2").Error;
       
            
            //Assert
            Assert.AreEqual(false, result);
        }

        [TestMethod]
        public void negative()
    {
        
        //Act

        bool result = Authenticator.Authenticate("sivaravula", "Bahubali").Error;

            //Assert
            Assert.AreEqual(true, result);
    }
}

    }


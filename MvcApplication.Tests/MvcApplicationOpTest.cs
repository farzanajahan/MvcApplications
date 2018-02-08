using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MvcApplication.Controllers;

namespace MvcApplication.Tests
{
    [TestClass]
    public class MvcApplicationOpTest
    {
        [TestMethod]
        public void positive()
        {
            AuthenticateController DC = new AuthenticateController();
            //Act
         
            bool result = DC.logon2("sivaravula", "Bahubali2");

            //Assert
            Assert.AreEqual(false, result);
        }

        [TestMethod]
        public void negative()
    {
        AuthenticateController DC = new AuthenticateController();
        //Act

        bool result = DC.logon2("sivaravula", "Baubali2");

        //Assert
        Assert.AreEqual(true, result);
    }
}

    }


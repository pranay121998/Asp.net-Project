using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace EmployeeWorkBook.App_Start
{
    public class Bundle
    {
        public static void RegisterBundle(BundleCollection bundle)
        {
            bundle.Add(new ScriptBundle("~/bundels/VendorFiles").Include(
                "~/Content/vendor/bootstrap/js/bootstrap.bundle.min.js",
                "~/Content/vendor/aos/aos.js",
                "~/Content/vendor/glightbox/js/glightbox.min.js",
                "~/Content/vendor/purecounter/purecounter_vanilla.js",
                "~/Content/vendor/swiper/swiper-bundle.min.js",
                "~/Content/vendor/isotope-layout/isotope.pkgd.min.js",
                "~/Content/vendor/php-email-form/validate.js",
                "~/Content/js/main.js"
                ));
        }
    }
}
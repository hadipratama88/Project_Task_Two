using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_Task_Two.Controllers
{
    public class HomeController : Controller
    {
        private Models.CRUD crudm = new Models.CRUD();
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View(crudm.ShowAllMahasiswa());
        }

        public ActionResult About()
        {
            return View();
        }
        //
        // GET: /Home/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Home/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Home/Create

        [HttpPost]
        public ActionResult Create([Bind(Exclude = "NRP")] Models.Tmahasiswa mahasiswabaru)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    // TODO: Add insert logic here
                    crudm.NewMahasiswa(mahasiswabaru);
                    crudm.Save();
                    return RedirectToAction("Index");
                }
                catch
                {
                }
            }
            return View();
        }
        
        //
        // GET: /Home/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View(crudm.Tampil(id));
        }

        //
        // POST: /Home/Edit/5

        [HttpPost]
        public ActionResult Edit(Models.Tmahasiswa edit)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    // TODO: Add update logic here
                    crudm.Edit(edit);
                    crudm.Save();
                    return RedirectToAction("Index");
                }
                catch
                {
               
                } 
            }
            return View();
        }

        //
        // GET: /Home/Delete/5
 
        public ActionResult Delete(int id)
        {
            Models.Tmahasiswa tm = crudm.Tampil(id);
            return View(tm);
        }

        //
        // POST: /Home/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, string confirmButton)
        {
            try
            {
                // TODO: Add delete logic here
                crudm.Delete(id);
                crudm.Save();
            }
            catch
            {
            }
            return View("Deleted");
        }
    }
}

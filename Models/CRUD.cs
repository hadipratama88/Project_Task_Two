using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_Task_Two.Models
{
    public class CRUD
    {
        MHSDataContext db = new MHSDataContext();

        //menampilkan semua mahasiswa, digunakan pada View Index
        public IQueryable<Tmahasiswa> ShowAllMahasiswa()
        {
            var query = from p in db.Tmahasiswas
                        orderby p.NRP
                        select p;
            return query;
        }

        //menambah mahasiswa baru, digunakan pada View Create
        public void NewMahasiswa(Tmahasiswa mahasiswabaru)
        {
            db.Tmahasiswas.InsertOnSubmit(mahasiswabaru);
        }

        //mengambil mahasiswa berdasarkan NRP tertentu
        public Tmahasiswa Tampil(int nrp)
        {
            Tmahasiswa tm = db.Tmahasiswas.Where(p => p.NRP == nrp).Single<Tmahasiswa>();
            return tm;
        }

        //mengedit mahasiswa
        public void Edit(Tmahasiswa edit)
        {
            Tmahasiswa tm = db.Tmahasiswas.Where(p => p.NRP == edit.NRP).Single<Tmahasiswa>();
            tm.Nama = edit.Nama;
            tm.Jurusan = edit.Jurusan;
        }

        //menghapus mahasiswa
        public void Delete(int nrp)
        {
            Tmahasiswa tm = db.Tmahasiswas.Where(p => p.NRP == nrp).Single<Tmahasiswa>();
            db.Tmahasiswas.DeleteOnSubmit(tm);
        }

        public void Save()
        {
            db.SubmitChanges();
        }
    }
}
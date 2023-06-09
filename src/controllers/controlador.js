const controller = {};

controller.list = (req, res) =>{
    req.getConnection((err, conn) => {
        conn.query('SELECT*FROM estudiante', (err, estudiantes) => {
            if(err){
                res.json(err);
            }
            res.render('estudiantes', {
                data: estudiantes
            });
        });
    });
};

controller.save = (req, res) =>{
    const data = req.body;
    req.getConnection((err, conn) => {
        conn.query('INSERT INTO estudiante set ?', [data], (err, estudiante) =>{
            res.redirect('/');
        });
    })
};

controller.edit = (req, res) => {
    const { id } = req.params;
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM estudiante WHERE id = ?', [id], (err, estudiante) => {
            res.render('customer_edit', {
                data: estudiante[0]
            })
        });
    });
};

controller.update = (req, res) => {
    const { id } = req.params;
    const newStudent = req.body;
    req.getConnection((err, conn) => {
        conn.query('UPDATE estudiante set ? WHERE id = ?', [newStudent, id], (err, rows) => {
            res.redirect('/');
        });
    });
};


controller.delete = (req, res) =>{
    const { id } = req.params;
    req.getConnection((err, conn) =>{
        conn.query('DELETE FROM estudiante WHERE id = ?', [id], (err, rows)=>{
            res.redirect('/');
        });
    })
};

module.exports = controller;
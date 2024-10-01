const sqlConfig = {
    list: `select fundraiser.*, category.name
                                from fundraiser
                                join category on fundraiser.category_id = category.category_id
                                where (fundraiser.category_id = ? or ? is null)
                                and (fundraiser.active = 1)
                                and (fundraiser.organizer = ? or ? is null)
                                and (fundraiser.city = ? or ? is null)`,
    detail: `select fundraiser.*, category.name
                                from fundraiser
                                join category on fundraiser.category_id = category.category_id
                                where fundraiser.fundraiser_id = ?`,
    category: 'select * from category',
    organizer: 'select organizer from fundraiser',
    city: 'select city from fundraiser',
};
module.exports = sqlConfig;
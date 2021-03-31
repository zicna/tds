teams = [
    {name: "b2 logistics"},
    {name: "Zicna INC"}
]

teams.each do |team|
    Team.create(team)
end

dispatchers = [
    {name: "Clark", team_id: 1,password: "fj_clark" },
    {name: "Jason", team_id: 1,password: "fj_jason" },
    {name: "Milo", team_id: 1,password: "fj_milo"},
    {name: "Marko", team_id: 1,password: "fj_marko"},
    {name: "Pavle", team_id: 2,password: "fj_pavle"},
    {name: "Lasica", team_id: 2,password: "fj_lasica"},
    {name: "Milena", team_id: 2,password: "fj_milena"},
    {name: "Branko", team_id: 2,password: "fj_branko"}
]

dispatchers.each do |disp|
    Dispatcher.create(disp)
end

drivers = [
    {name: "Driver01",truck: 1 , trailer: "GD11" ,team_id: 1  },
    {name: "Driver02",truck: 2 , trailer: "GD12" ,team_id: 1  },
    {name: "Driver03",truck: 3 , trailer: "GD13" ,team_id: 1  },
    {name: "Driver04",truck: 4 , trailer: "GD14" ,team_id: 1  },
    {name: "Driver05",truck: 5 , trailer: "GD15" ,team_id: 1  },
    {name: "Driver06",truck: 6 , trailer: "GD16" ,team_id: 1  },
    {name: "Driver07",truck: 7 , trailer: "GD17" ,team_id: 1  },
    {name: "Driver08",truck: 8 , trailer: "GD18" ,team_id: 1  },
    {name: "Driver09",truck: 9 , trailer: "GD19" ,team_id: 1  },
    {name: "Driver10",truck: 10 , trailer: "GD20" ,team_id: 1  },
    {name: "Driver11",truck: 11 , trailer: "GD21" ,team_id: 1  },
    {name: "Driver12",truck: 12 , trailer: "GD22" ,team_id: 1  },
    {name: "Driver13",truck: 13 , trailer: "GD23" ,team_id: 2  },
    {name: "Driver14",truck: 14 , trailer: "GD24" ,team_id: 2  },
    {name: "Driver15",truck: 15 , trailer: "GD25" ,team_id: 2  },
    {name: "Driver16",truck: 16 , trailer: "GD26" ,team_id: 2  },
    {name: "Driver17",truck: 17 , trailer: "GD27" ,team_id: 2  },
    {name: "Driver18",truck: 18 , trailer: "GD28" ,team_id: 2  },
    {name: "Driver19",truck: 19 , trailer: "GD29" ,team_id: 2  },
    {name: "Driver20",truck: 20 , trailer: "GD30" ,team_id: 2  },
    {name: "Driver21",truck: 21 , trailer: "GD31" ,team_id: 2  }
]

drivers.each do |driver|
    Driver.create(driver)
end

loads = [
{pickup: "Chicago", delivery: "St.Louis", amount: 1200, miles: 315,dispatcher_id: 8, driver_id: 20,notes: "All good"},
{pickup: "Chicago", delivery: "Dallas", amount: 2100, miles: 950,dispatcher_id: 1, driver_id: 2,notes: "Tracking is required, sensitive load."},
{pickup: "Chicago", delivery: "Nashville", amount: 1300, miles: 475, dispatcher_id: 3, driver_id: 10,notes: "Tracking is required, sensitive load."},
{pickup: "Chicago", delivery: "Paterson", amount: 2500, miles: 780, dispatcher_id: 2, driver_id: 11,notes: "Tracking is required, sensitive load."},
{pickup: "Chicago", delivery: "los Angeles", amount: 5500, miles: 2120, dispatcher_id: 4, driver_id: 7,notes: "Tracking is required, sensitive load."},
{pickup: "Chicago", delivery: "Salt Lake City", amount: 3200, miles: 1400, dispatcher_id: 5, driver_id: 15,notes: "Tracking is required, sensitive load."},
{pickup: "Chicago", delivery: "Phoenix", amount: 3900, miles: 1750, dispatcher_id: 6, driver_id: 17,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Chicago", amount: 6750, miles: 2150, dispatcher_id: 7, driver_id: 18,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Portland", amount: 2700, miles: 960, dispatcher_id: 8, driver_id: 19,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Nashville", amount: 5000, miles: 2000, dispatcher_id: 5, driver_id: 13,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Paterson", amount: 7500, miles: 2780, dispatcher_id: 6, driver_id: 21,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Milwaukee", amount: 6750, miles: 2100, dispatcher_id: 4, driver_id: 7,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Boise", amount: 2500, miles: 850, dispatcher_id: 3, driver_id: 6,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Dallas", amount: 3500, miles: 1450, dispatcher_id: 2, driver_id: 1,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Indianapolis", amount: 5500, miles: 2070, dispatcher_id: 1, driver_id: 3,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Columbus", amount: 6000, miles: 2250, dispatcher_id: 7, driver_id: 14,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Charlotte", amount: 2500, miles: 6500, dispatcher_id: 8, driver_id: 19,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Los Angeles", amount: 4000, miles: 1450, dispatcher_id: 5, driver_id: 16,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Chicago", amount: 1500, miles: 950, dispatcher_id: 6, driver_id: 21,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Laredo", amount: 1200, miles: 430, dispatcher_id: 7, driver_id: 20,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Houston", amount: 900, miles: 240, dispatcher_id: 8, driver_id: 16,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Minneapolis", amount: 2500, miles: 1000, dispatcher_id: 2, driver_id: 4,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "St.Louis", amount: 1300, miles: 640, dispatcher_id: 3, driver_id: 5,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Cleveland", amount: 2900, miles: 1190, dispatcher_id: 1, driver_id: 7,notes: "Tracking is required, sensitive load."}
]

loads.each do |load|
    Load.create(load)
end


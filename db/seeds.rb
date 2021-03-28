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
    Dispatch.create(disp)
end

drivers = [
    {name: "Driver01",truck: 001 , trailer: "GD11" ,team_id: 1  },
    {name: "Driver02",truck: 002 , trailer: "GD12" ,team_id: 1  },
    {name: "Driver03",truck: 003 , trailer: "GD13" ,team_id: 1  },
    {name: "Driver04",truck: 004 , trailer: "GD14" ,team_id: 1  },
    {name: "Driver05",truck: 005 , trailer: "GD15" ,team_id: 1  },
    {name: "Driver06",truck: 006 , trailer: "GD16" ,team_id: 1  },
    {name: "Driver07",truck: 007 , trailer: "GD17" ,team_id: 1  },
    {name: "Driver08",truck: 008 , trailer: "GD18" ,team_id: 1  },
    {name: "Driver09",truck: 009 , trailer: "GD19" ,team_id: 1  },
    {name: "Driver10",truck: 010 , trailer: "GD20" ,team_id: 1  },
    {name: "Driver11",truck: 011 , trailer: "GD21" ,team_id: 1  },
    {name: "Driver12",truck: 012 , trailer: "GD22" ,team_id: 1  },
    {name: "Driver13",truck: 013 , trailer: "GD23" ,team_id: 2  },
    {name: "Driver14",truck: 014 , trailer: "GD24" ,team_id: 2  },
    {name: "Driver15",truck: 015 , trailer: "GD25" ,team_id: 2  },
    {name: "Driver16",truck: 016 , trailer: "GD26" ,team_id: 2  },
    {name: "Driver17",truck: 017 , trailer: "GD27" ,team_id: 2  },
    {name: "Driver18",truck: 018 , trailer: "GD28" ,team_id: 2  },
    {name: "Driver19",truck: 019 , trailer: "GD29" ,team_id: 2  },
    {name: "Driver20",truck: 020 , trailer: "GD30" ,team_id: 2  },
    {name: "Driver21",truck: 021 , trailer: "GD31" ,team_id: 2  }
]

drivers.each do |driver|
    Driver.create(driver)
end

loads = [
{pickup: "Chicago", delivery: "St.Louis", amount: 1200, miles: 315, team_id: 1,dispatcher_id: 8, driver_id: 20,notes: "All good"},
{pickup: "Chicago", delivery: "Dallas", amount: 2100, miles: 950, team_id: 1,dispatcher_id: 1, driver_id: 2,notes: "Tracking is required, sensitive load."},
{pickup: "Chicago", delivery: "Nashville", amount: 1300, miles: 475, team_id: 1,dispatcher_id: 3, driver_id: 10,notes: "Tracking is required, sensitive load."},
{pickup: "Chicago", delivery: "Paterson", amount: 2500, miles: 780, team_id: 1,dispatcher_id: 2, driver_id: 11,notes: "Tracking is required, sensitive load."},
{pickup: "Chicago", delivery: "los Angeles", amount: 5500, miles: 2120, team_id: 1,dispatcher_id: 4, driver_id: 7,notes: "Tracking is required, sensitive load."},
{pickup: "Chicago", delivery: "Salt Lake City", amount: 3200, miles: 1400, team_id: 1,dispatcher_id: 5, driver_id: 15,notes: "Tracking is required, sensitive load."},
{pickup: "Chicago", delivery: "Phoenix", amount: 3900, miles: 1750, team_id: 1,dispatcher_id: 6, driver_id: 17,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Chicago", amount: 6750, miles: 2150, team_id: 1,dispatcher_id: 7, driver_id: 18,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Portland", amount: 2700, miles: 960, team_id: 1,dispatcher_id: 8, driver_id: 19,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Nashville", amount: 5000, miles: 2000, team_id: 1,dispatcher_id: 5, driver_id: 13,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Paterson", amount: 7500, miles: 2780, team_id: 1,dispatcher_id: 6, driver_id: 21,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Milwaukee", amount: 6750, miles: 2100, team_id: 1,dispatcher_id: 4, driver_id: 7,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Boise", amount: 2500, miles: 850, team_id: 1,dispatcher_id: 3, driver_id: 6,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Dallas", amount: 3500, miles: 1450, team_id: 1,dispatcher_id: 2, driver_id: 1,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Indianapolis", amount: 5500, miles: 2070, team_id: 2,dispatcher_id: 1, driver_id: 3,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Columbus", amount: 6000, miles: 2250, team_id: 2,dispatcher_id: 7, driver_id: 14,notes: "Tracking is required, sensitive load."},
{pickup: "Loc Angeles", delivery: "Charlotte", amount: 2500, miles: 6500, team_id: 2,dispatcher_id: 8, driver_id: 19,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Los Angeles", amount: 4000, miles: 1450, team_id: 2,dispatcher_id: 5, driver_id: 16,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Chicago", amount: 1500, miles: 950, team_id: 2,dispatcher_id: 6, driver_id: 21,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Laredo", amount: 1200, miles: 430, team_id: 2,dispatcher_id: 7, driver_id: 20,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Houston", amount: 900, miles: 240, team_id: 2,dispatcher_id: 8, driver_id: 16,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Minneapolis", amount: 2500, miles: 1000, team_id: 2,dispatcher_id: 2, driver_id: 4,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "St.Louis", amount: 1300, miles: 640, team_id: 2,dispatcher_id: 3, driver_id: 5,notes: "Tracking is required, sensitive load."},
{pickup: "Dallas", delivery: "Cleveland", amount: 2900, miles: 1190, team_id: 2,dispatcher_id: 1, driver_id: 7,notes: "Tracking is required, sensitive load."}
]

loads.each do |load|
    Load.create(load)
end


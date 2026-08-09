{
  points: {
    drop_races: 2,
    points: {
      default: [50, 41, 36, 33, 30, 27, 24, 22, 20, 18, 16, 14, 12, 10, 8, 6, 4, 3, 2, 1],
      major: [75, 64, 59, 55, 51, 48, 45, 42, 39, 36, 34, 32, 30, 28, 26, 24, 22, 20, 18, 16, 14, 12, 10, 8, 6, 5, 4, 3, 2, 1],
    },
  },
  classes: [
    {
      name: 'Platinum',
      symbol: 'P',
      color: '#b4b8bb',
      drivers: [
        { name: 'Austin Cobb3' },
        { name: 'Derek M Cyphers' },
        { name: 'Derek Tirums' },
        { name: 'Ed Eijsenring' },
        { name: 'Jesse Lyon2' },
        { name: 'Leif Peterson' },
        { name: 'Lennie Holland' },
        { name: 'Logan Grado' },
        { name: 'Luke Mann' },
        { name: 'Marc Nistor' },
        { name: 'Matt Mosby' },
        { name: 'Matthew Siddall' },
        { name: 'Nick Facciolo' },
        { name: 'Nick Melaragno2' },
        { name: 'Rich Minkler' },
        { name: 'Robby Prescott' },
        { name: 'Ross Yost' },
        { name: 'Scott Dancer' },
        { name: 'Derek Tirums' },
      ],
    },
    {
      name: 'Gold',
      symbol: 'G',
      color: '#c9a84c',
      drivers: [
        { name: 'Chris Sherburn' },
        { name: 'Dale Green' },
        { name: 'David Fernandes' },
        { name: 'Casey Mcdonald' },
        { name: 'Enrico Gregoratto' },
        { name: 'George Poulos' },
        { name: 'Greg Strelzoff' },
        { name: 'James Franznick' },
        { name: 'Julian Jones4' },
        { name: 'Ken Eskridge' },
        { name: 'Peter Kummer' },
        { name: 'Peter Sigourney' },
        { name: 'Robert Galejs' },
        { name: 'Robert Neville' },
        { name: 'Rodney Campbell2' },
        { name: 'Samuel de Oliveira' },
        { name: 'William Wolfe4' },
      ],
    },
  ],
  render: {
    combined_table: true,
    per_class_tables: true,
  },
  elo: {
    previous_seasons: [
      import '24_gt3.jsonnet',
      import '25-1_lmp2.jsonnet',
      import '25-2_gt4.jsonnet',
      import '26-1.jsonnet',
    ],
    min_races: 4,
    time_window: '365 days',
    weight: 0.5,
  },
  races: [
    { 
      subsession_id: 87695916, 
      race_name: 'Circuit de Barcelona Catalunya' 
      penalties: [
        {time: 5, name: 'Samuel de Oliveira'},
      ]
    },
  ],
}

Node.create({ id: 5, name: 'a', value: 1 })
Node.create({ id: 6, name: 'b', value: 2 })
Node.create({ id: 7, name: 'c', value: 3 })

Edge.create({ id: 1, name: 'A', source: 'a', destiny: 'b', value: 10 })
Edge.create({ id: 2, name: 'B', source: 'a', destiny: 'c', value: 20 })
Edge.create({ id: 3, name: 'C', source: 'b', destiny: 'c', value: 30 })
require 'rubygems'
require 'decisiontree'

attributes = ['Temp']

# training data
training = [
	[98.7, 'healthy'],
	[99.1, 'healthy'],
	[99.5, 'sick'],
	[100.5, 'sick'],
	[102.5, 'crazy sick'],
	[107.5, 'dead'],
	[94,1, 'sick'],
	[90.1, 'crazy sick'],
	[55, 'dead'],
	[50, 'dead'],
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
dec_tree.train


test = [48.5]
puts dec_tree.predict(test)


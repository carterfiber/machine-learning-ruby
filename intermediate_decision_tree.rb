require 'rubygems'
require 'decisiontree'

attributes = ['Age', 'Education', 'Income', 'Marital Status']

training = [
	['36-55', 'Masters', 'High', 'Single', 1],
	['18-35', 'High School', 'High', 'Married', 0],
	['55+', 'GED', 'Low', 'Single', 1],
	['55+', 'PHD', 'High', 'Single', 1],
	['36-55', 'Masters', 'High', 'Married', 0],
	['36-55', 'Masters', 'Low', 'Married', 0],
	['18-35', 'GED', 'Low', 'Single', 1],
	['< 18', 'High School', 'Low', 'Single', 1],
	['18-35', 'GED', 'Low', 'Married', 1],
	['36-55', 'GED', 'Low', 'Single', 0],
	['18-35', 'Masters', 'High', 'Single', 1],
]
#0 = no purchase and 1 = purchased

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 1, :discrete)

test = ['18-35', 'PHD', 'High', 'Married']
puts dec_tree.predict(test)
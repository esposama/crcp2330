#! /usr/bin/env ruby
def args_valid? 
	ARGV[0] && ARGV[0].end_with?(".asm") && ARGV.length == 1
end 

def is_reabable?(path)
	File.readable?(path)
end

unless args_valid? 
	abort("Usage: ./assembler.rb Prog.asm")
end

asm_filename = ARGV[0]

unless is_reabable?(asm_filename)
	abort("#{asm_filename} not found or is unreadable.")
end 

File.open(asm_filename) do |asm_filename| 
	asm_basename = File.basename(asm_filename, '.asm')
	path = File.split(asm_filename)[0]
	hack_filename= "#{path}/#{asm_basename}.hack"
	File.open(hack_filename) do |hack_file| 
		assembler = Assembler.new(File.open(asm_filename), hack_file)
		assembler.assemble! 
	end 
end 
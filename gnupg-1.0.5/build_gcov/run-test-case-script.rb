#!/usr/bin/env ruby -w

# Obtain all ktest files and store them into an array sorted alphabetically
all_ktext_files = Dir.glob("klee-out-0/*.ktest").sort!

return if all_ktext_files.empty? 

puts 'Initializing coverage report...'
system('lcov-1.10/bin/lcov -i -z -d .')

klee_replay_path = '/homes/ma23/scratch/klee-cde-package/cde-root/home/pgbovine/klee/Release+Asserts/bin/klee-replay'
klee_replay_args = '--create-files-only'
buggy_gpg_path = '/homes/ma23/Purdue/cs490st/proj3/gnupg-1.0.5/build_gcov/g10/gpg'
created_replay_filename = 'A'
error_log_file = 'gpg_run_errors.txt'

# Iterate over each ktest file and execute test case
all_ktext_files.each do |filename|
  puts 'Executing... ' + filename
  create_file_command = klee_replay_path + ' ' + klee_replay_args + ' ' + filename
  system(create_file_command)
  exec_gpg_command = buggy_gpg_path + ' ' + created_replay_filename
  unless system(exec_gpg_command)
    File.open(error_log_file, 'a') {|f| f.write(filename + ' returned an error.\n') }
  end
end

puts 'Making coverage report...'
system('lcov-1.10/bin/lcov -c -d . > coverage.info')

puts 'Making HTML coverage report...'
system('lcov-1.10/bin/genhtml -o html coverage.info')
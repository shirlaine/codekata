def distribute(nodes, workload)
  job=[]
  work = Array(0..workload-1)
  if work.length % nodes == 0
    p work.each_slice(workload/nodes).to_a
  else
    # p work
   less_job = work.drop(workload-nodes)

   more_job = work.take(workload-nodes)
   p more_job
   p less_job

   if workload-nodes <=1
    job << work.take(2)
    work.drop(2).each_slice(1).to_a.each {|el| job << el }
    p job
   elsif workload-nodes <=3
     p job << more_job << less_job
   else workload - nodes >3
    more_job.each_slice((workload-nodes)/(nodes/2)).to_a.each { |el| job <<el }
    less_job.each_slice(10%4).to_a.each {|el| job << el }
    p job
   end
  end
end


# distribute(2, 4) #[[0, 1], [2, 3])
# distribute(3, 3) #[[0], [1], [2])
# distribute(3, 9) #[[0, 1, 2], [3, 4, 5], [6, 7, 8]])

# distribute(2, 5) #[[0, 1, 2], [3, 4]])
distribute(97, 920)#distribute(4, 10) #[[0, 1, 2], [3, 4, 5], [6, 7], [8, 9]])
 #[[0, 1], [2], [3], [4]])
# distribute(4, 15)

=begin
Input => 2 integers

Output => Arrays

=end

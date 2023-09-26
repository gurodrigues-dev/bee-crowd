Scanf.scanf "%i" (fun n -> 
    let r = floor (float n *. log10 (float n /. exp 1.0) +. log10 (2.0 *. 3.14159265358979312 *. float n) /. 2.0) +. 1.0 in 

    Printf.printf "%d\n" (int_of_float r)
  )
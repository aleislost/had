repeat (irandom_range(2, 4))
{
    instance_create_depth(random_range(16, 176), random_range(16, 32), 300, oWisp);
    instance_create_depth(random_range(16, 176), random_range(160, 176), 300, oWisp);
    instance_create_depth(random_range(16, 32), random_range(16, 176), 300, oWisp);
    instance_create_depth(random_range(160, 176), random_range(16, 176), 300, oWisp);
}

///dialogue_create(line1,line2,...)

with (instance_create(0, 0, oDialogue))
{
    for (var i = 0; i < argument_count; i++)
    {
        ds_list_add(lines, argument[i]);
    }
    
    return id;
}


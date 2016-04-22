function e_variance = get_V(X, e_Vec)
    e_variance = transpose(X) * e_Vec(:, 1);
end
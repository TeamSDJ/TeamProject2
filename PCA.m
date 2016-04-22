function [e_Vec, e_Val] = PCA(xa, ya, xb, yb, xc, yc)
    X  = [xa; ya; xb; yb; xc; yc];
    [m, n] = size(X);
    mn = mean(X, 2);
    X  = X - repmat(mn, 1, n);
    [u, s, v] = svd(X./sqrt(n - 1));
    e_Val = diag(s).^2;
    e_Vec = u;
end
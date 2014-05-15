function inds = desiredVal(X, val)
% matrix or vector
    if ~isvector(X)
        Y = X(:);%convert matrix to vector
        m = min(abs(Y-val));
    else
        m= min(abs(X-val));
    end
    inds = find(X == m+val);
end
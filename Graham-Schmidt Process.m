
v = [4,-2,-2;0,1,0;1,0,1];
k = size(v,2);
assert(k>=2,'The input matrix must include more than one vector.');

for ii = 1:1:k
    v(:,ii) = v(:,ii) / norm(v(:,ii));
    for jj = ii+1:1:k
        v(:,jj) = v(:,jj) - proj(v(:,ii),v(:,jj));
    end
end
check = v * v'

 function w = proj(u,v)
        % This function projects vector v on vector u
        w = (dot(v,u) / dot(u,u)) * u;
 end
 
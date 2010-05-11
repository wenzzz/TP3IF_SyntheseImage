function [M] = EnhanceTerrain(Heights, l)
	W = size(Heights, 2);
	H = size(Heights, 1);

	sigma = 7;
	D = 2.3;

	M = zeros(H * 2 - 1, W * 2 - 1)
	Heights	

	for j= 1:H-1
		for i= 1:W-1
				M(j * 2 - 1, i * 2 - 1) = Heights(j, i);
				M(j * 2 - 1, i * 2 + 0) =  (1/2)*(Heights(j, i) + Heights(j, i + 1) + randn(1) * 2^(-l*(3-D)));
				M(j * 2 - 1, i * 2 + 1) = Heights(j, i + 1);
		end
		for n= 1:W-1
			for k= (n*2)- 1:(n*2) + 1
				M(j * 2, k) =  (1/2)*(Heights(j, n) + Heights(j + 1, n) + randn(1) * 2^(-l*(3-D)));
			end
		end
	end

	j = H;
	for i= 1:W-1
		M(j * 2 - 1, i * 2 - 1) = Heights(j, i);
		M(j * 2 - 1, i * 2 + 0) =  (1/2)*(Heights(j, i) + Heights(j, i + 1) + randn(1) * 2^(-l*(3-D)));
		M(j * 2 - 1, i * 2 + 1) = Heights(j, i + 1);
	end
end

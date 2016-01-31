function ImgSeg = RegGrowSeg (ImgOri, ImgValue, Connect, Threshold)%segamentation fucntion with region growing method
    Region = 0;
    RegionMap = zeros(size(ImgOri));
    [m, n] = size (ImgOri);
  
    if (Connect ~= 4 && Connect ~= 8)
        return;
    end
    if (Connect == 4)
        Nbr = [-1 0; 0 -1;0 1; 1 0];
        NbrSize = 4;
    end
    if (Connect == 8)
        Nbr = [-1 -1; -1 0; -1 1; 0 -1; 0 1; 1 -1; 1 0; 1 1];
        NbrSize = 8;
    end
    
    % Choose one pixel which does not be include to any region yet and it's value less than threshold
    for I = 1:m;
        for J = 1:n;
            if (RegionMap(I, J) == 0 && ImgValue(I, J) <= Threshold)
                Queue = [I J];
                Region = Region+1;
                RegionMap(I, J) = Region;
             
                % Start Growing 
                while ~isempty(Queue)
                    X = Queue(1, 1);
                    Y = Queue(1, 2);
                    Queue(1, :) = [];
                    if (ImgValue(X, Y) <= Threshold)
                        %push neighborhood
                        for K = 1:NbrSize;
                            Nx = X + Nbr(K, 1);
                            Ny = Y + Nbr(K, 2);
                            if (Nx > 0 && Nx< m+1 && Ny > 0 && Ny < n+1)
                               if (RegionMap(Nx, Ny) == 0)
                                    RegionMap(Nx, Ny) = Region;
                                    Queue = [Queue ; [Nx Ny]];
                            
                               end
                            end
                        end
                    end
                end             
            end
        end
    end
    
    ImgSeg = RegionMap/Region; 


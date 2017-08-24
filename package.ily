%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% This file is part of openLilyLib,                                           %
%                      ===========                                            %
% the community library project for GNU LilyPond                              %
% (https://github.com/openlilylib)                                            %
%              -----------                                                    %
%                                                                             %
% Library: lalily-templates                                                   %
%          ================                                                   %
%                                                                             %
% openLilyLib is free software: you can redistribute it and/or modify         %
% it under the terms of the GNU General Public License as published by        %
% the Free Software Foundation, either version 3 of the License, or           %
% (at your option) any later version.                                         %
%                                                                             %
% openLilyLib is distributed in the hope that it will be useful,              %
% but WITHOUT ANY WARRANTY; without even the implied warranty of              %
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               %
% GNU General Public License for more details.                                %
%                                                                             %
% You should have received a copy of the GNU General Public License           %
% along with openLilyLib. If not, see <http://www.gnu.org/licenses/>.         %
%                                                                             %
% openLilyLib is maintained by Urs Liska, ul@openlilylib.org                  %
% lalily-templates is maintained by Jan-Peter Voigt, jp.voigt@gmx.de          %
% and others.                                                                 %
%       Copyright Jan-Peter Voigt, Urs Liska, 2017                            %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "oll-core/package.ily"
\include "oll-core/util/include-pattern.ily"
#(load-from-path "lalily-templates/scheme/bootstrap.scm")
% This should be loaded per template file
%\loadPackage edition-engraver


\optionsInit opts
\optionsAddL opts template lalily.piano
\optionsAdd opts title "Hallo Welt!"

#(display opts)
#(newline)
#(display (normalize-path `(a b c .. d e ,'. f g)))
#(newline)

\setMusicFolder my.music
\includePattern "templates" ".*\\.ily"
\setDefaultTemplate song.test generic #'()
\setTitle "Hallo Welt"
\putMusic \relative { bes'4 a c b }

\registerTemplate generic
#(define-music-function (opts)(list?)
   #{ \getMusic #'() #})

\callTemplate generic #'() #'()

-- Sample formats shown as comments
select convert(varchar, getdate(), 101) -- 12/23/2015
select convert(varchar, getdate(), 102) -- 2015.12.23
select convert(varchar, getdate(), 103) -- 23/12/2015
select convert(varchar, getdate(), 104) -- 23.12.2015
select convert(varchar, getdate(), 105) -- 23-12-2015
select convert(varchar, getdate(), 106) -- 23 Dec 2015
select convert(varchar, getdate(), 107) -- Dec 23, 2015
select convert(varchar, getdate(), 108) -- 08:32:49
select convert(varchar, getdate(), 109) -- Dec 23 2015 8:33:06:007AM
select convert(varchar, getdate(), 110) -- 12-23-2015
select convert(varchar, getdate(), 111) -- 2015/12/23
select convert(varchar, getdate(), 112) -- 20151223
select convert(varchar, getdate(), 113) -- 23 Dec 2015 08:33:25:220
select convert(varchar, getdate(), 114) -- 08:33:25:220
select convert(varchar, getdate(), 115) -- 115 is not a valid style number when converting from datetime to a character string.
select convert(varchar, getdate(), 116) -- 116 is not a valid style number when converting from datetime to a character string.
select convert(varchar, getdate(), 117) -- 117 is not a valid style number when converting from datetime to a character string.
select convert(varchar, getdate(), 118) -- 118 is not a valid style number when converting from datetime to a character string.
select convert(varchar, getdate(), 119) -- 119 is not a valid style number when converting from datetime to a character string.
select convert(varchar, getdate(), 120) -- 2015-12-23 08:34:39
select convert(varchar, getdate(), 121) -- 2015-12-23 08:35:46.370

/**
 * @name find string
 * @kind problem
 * @problem.severity warning
 * @id cpp/example/empty-block
 */

import cpp


from Variable var, string namestr
where var.getInitializer().getExpr().getActualType().toString() = "const char *" and
namestr = var.getInitializer().getExpr().getValue().toLowerCase() and
	(namestr.regexpMatch("\\w*password\\w*") or
     namestr.regexpMatch("\\w*passwd\\w*") or
      namestr.regexpMatch("\\w*pwd\\w*") or
      namestr.regexpMatch("\\w*secret\\w*") or
      namestr.regexpMatch("\\w*token\\w*") or
      namestr.regexpMatch("\\w*auth\\w*") or
      namestr.regexpMatch("\\w*host\\w*") or
      namestr.regexpMatch("\\w*server\\w*") or
	  namestr.regexpMatch("\\w*username\\w*") or
      namestr.regexpMatch("\\w*account\\w*")
	)

select var.getName().toString(), var.getInitializer().getExpr().getValue(), var.getInitializer().getLocation()

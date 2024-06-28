package cores.nagiCore.rtl


final class build$_ {
def args = build_sc.args$
def scriptPath = """cores/nagiCore/rtl/build.sc"""
/*<script>*/
// import Mill dependency
import mill._
import mill.define.Sources
import mill.modules.Util
import mill.scalalib.TestModule.ScalaTest
import scalalib._
// support BSP
import mill.bsp._

import os.Path

trait base extends SbtModule { m =>
    override def millSourcePath = os.pwd
    override def scalaVersion = "2.13.12"
    override def scalacOptions = Seq(
        "-language:reflectiveCalls",
        "-deprecation",
        "-feature",
        "-Xcheckinit",
    )
    override def ivyDeps = Agg(
        ivy"org.chipsalliance::chisel:5.1.0",
    )
    override def scalacPluginIvyDeps = Agg(
        ivy"org.chipsalliance:::chisel-plugin:5.1.0",
    )
}

trait testable extends SbtModule { m =>
    object test extends SbtModuleTests with TestModule.ScalaTest {
        override def ivyDeps = m.ivyDeps() ++ Agg(
            ivy"edu.berkeley.cs::chiseltest:5.0.2"
        )
    }
}

object nagicore extends base with testable

/*</script>*/ /*<generated>*//*</generated>*/
}

object build_sc {
  private var args$opt0 = Option.empty[Array[String]]
  def args$set(args: Array[String]): Unit = {
    args$opt0 = Some(args)
  }
  def args$opt: Option[Array[String]] = args$opt0
  def args$: Array[String] = args$opt.getOrElse {
    sys.error("No arguments passed to this script")
  }

  lazy val script = new build$_

  def main(args: Array[String]): Unit = {
    args$set(args)
    val _ = script.hashCode() // hashCode to clear scalac warning about pure expression in statement position
  }
}

export build_sc.script as `build`


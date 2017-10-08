# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Sopy < Formula
  desc "A CLI tool for searching Stack Overflow"
  homepage "https://github.com/DavidJaimesDesign/SearchSOpy/"
  version "1.0.0"

  url "https://github.com/DavidJaimesDesign/SearchSOpy/blob/master/archive/so.tar.gz"
  version "1.0.0"
  #sha256 "4cf2e80427ac4ad3581ce62e722eb17cebd6405f81095755bde2bdd88c26fc65"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    ## system "cmake", ".", *std_cmake_args
    #system "make", "install" # if this fails, try separate make/make install steps
	bin.install "sopy"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test master`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    #system "false"
  end
end

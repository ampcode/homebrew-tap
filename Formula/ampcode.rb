class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792093135-gd61eb4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792093135-gd61eb4/amp-darwin-arm64"
      sha256 "c22c4cb605a211d889f0455ba15e3c1213ff57db58adf25f11a4abf3bbb9be92"
    else
      url "https://static.ampcode.com/cli/0.0.1792093135-gd61eb4/amp-darwin-x64"
      sha256 "1aba35c939f05eea865db050ff0a969e92c5def32bf29f9b74bdc3274a9fa674"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792093135-gd61eb4/amp-linux-arm64"
      sha256 "4c49d3264e0e202e57e7dc4670d803ff589823a1074db2da4aa0ecc1576b181d"
    else
      url "https://static.ampcode.com/cli/0.0.1792093135-gd61eb4/amp-linux-x64"
      sha256 "930ced1b26a72e68466a99e9720911e5fcb7bcc402524f7b9ea780083879dc07"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

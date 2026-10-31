class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793450357-gd44904"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793450357-gd44904/amp-darwin-arm64"
      sha256 "fc50d8f8057614764056d8f089498e80438f414bec8eca5ea1bbb9ef54d7b0dc"
    else
      url "https://static.ampcode.com/cli/0.0.1793450357-gd44904/amp-darwin-x64"
      sha256 "ab83e8bf94d72c4e169d831f4f31ffb09c5e163ca9a2da1fe34917b026f49c67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793450357-gd44904/amp-linux-arm64"
      sha256 "05467eb062eb61803323987d34a5431e2cab836a30944781c21495ea7c62376c"
    else
      url "https://static.ampcode.com/cli/0.0.1793450357-gd44904/amp-linux-x64"
      sha256 "e7d3f5023b627679a7ffc4319d8b5319e0b17bc5f121153c5a7f1103e6dbf25b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

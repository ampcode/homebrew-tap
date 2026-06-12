class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781290506-gcedc25"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781290506-gcedc25/amp-darwin-arm64"
      sha256 "7ed3aaed91e060878c722c45851627488511e294c393e232fd23c4a763b224a5"
    else
      url "https://static.ampcode.com/cli/0.0.1781290506-gcedc25/amp-darwin-x64"
      sha256 "1e36097155435360a6ba79f8ab38d84e6de8f46065c1f4b4203c64db84b8f12a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781290506-gcedc25/amp-linux-arm64"
      sha256 "acb16a3af698799d7dddc076e5c4fd0c32fe25243f846304badc41412ab2c4d5"
    else
      url "https://static.ampcode.com/cli/0.0.1781290506-gcedc25/amp-linux-x64"
      sha256 "f25077427268e7bc753cd6ee030291c62928262db0f17a978d6f971b9137d74a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

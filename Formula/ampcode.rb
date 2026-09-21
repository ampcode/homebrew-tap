class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789948881-g0115d6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789948881-g0115d6/amp-darwin-arm64"
      sha256 "250f9798f90e54c8103f43f94cd60c24fad066ccf194fc01c4b1910f3e6eb04f"
    else
      url "https://static.ampcode.com/cli/0.0.1789948881-g0115d6/amp-darwin-x64"
      sha256 "490404b08d573ae4bdfaaedaf382f0b75c6c194795943318bc1fd7786ec5cfd2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789948881-g0115d6/amp-linux-arm64"
      sha256 "84a982a5515c77c1e7d34ea7593aaf0c3aaacf44fc37fa65a5ef877c5f3659b6"
    else
      url "https://static.ampcode.com/cli/0.0.1789948881-g0115d6/amp-linux-x64"
      sha256 "ff3eae46fdca3bd941b70818c89dfd1139c7d4caac444bc28966f074e976668b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

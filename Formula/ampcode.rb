class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778589136-g0ce8e2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778589136-g0ce8e2/amp-darwin-arm64"
      sha256 "9990b28ebfa2f6d593001b963d151da5e35cf5b4677164cf0ca07b2e3ea2ce75"
    else
      url "https://static.ampcode.com/cli/0.0.1778589136-g0ce8e2/amp-darwin-x64"
      sha256 "2016e6c201cde9863920b31ac68dfcb85a298fdddacf68b31ed57f44835cd85c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778589136-g0ce8e2/amp-linux-arm64"
      sha256 "3941d40b726bff1cd0c332ac7de1af306bde4c207458ebd3e076f769ecef3edc"
    else
      url "https://static.ampcode.com/cli/0.0.1778589136-g0ce8e2/amp-linux-x64"
      sha256 "5e8ee05ec193b5c3e69edb63aef4bc47143df07536cf2bdf0681366d21b7e2e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

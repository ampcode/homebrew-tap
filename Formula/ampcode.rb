class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787945845-g8b1aa3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787945845-g8b1aa3/amp-darwin-arm64"
      sha256 "4f552d3b635ed5216364aa0608bd659658221dca80417e90b08c7aa06e3daabe"
    else
      url "https://static.ampcode.com/cli/0.0.1787945845-g8b1aa3/amp-darwin-x64"
      sha256 "d2d3757b217540a7160e5799b671e766b08ca5953fbf4a86627078534ae0eb36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787945845-g8b1aa3/amp-linux-arm64"
      sha256 "6dc4d5ffd0168ee5a866fdc0acce7998d2d0cc1c32dcd83ce70dd828482a27bb"
    else
      url "https://static.ampcode.com/cli/0.0.1787945845-g8b1aa3/amp-linux-x64"
      sha256 "6caa38199b0c22f4e62cb9cec22a9d7efb0bcd2bdd7b7b61c2278cfa99ded622"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774380679-gb7884a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774380679-gb7884a/amp-darwin-arm64"
      sha256 "6a549730f864e9ccb2f1807b99039db74da9b1f9b73d268119cbcc54d8bb1108"
    else
      url "https://static.ampcode.com/cli/0.0.1774380679-gb7884a/amp-darwin-x64"
      sha256 "5ab93bff30473c07998e09d58333e4fc32d4fcf55ea2e930f15325a3557ec432"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774380679-gb7884a/amp-linux-arm64"
      sha256 "430bcfddc6049011222f4270837663d91b9700c4cca5a815e151a4751c6b1cb7"
    else
      url "https://static.ampcode.com/cli/0.0.1774380679-gb7884a/amp-linux-x64"
      sha256 "20684d285181cfad917ef8c8d899fad1cf931507ba1f3a4e5c1beebdb3574b09"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

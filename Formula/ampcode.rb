class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779254216-g4389a4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779254216-g4389a4/amp-darwin-arm64"
      sha256 "870f25b53ebeda882722cd907a0e004b1b549e40bc5211a362cad774e19ead9e"
    else
      url "https://static.ampcode.com/cli/0.0.1779254216-g4389a4/amp-darwin-x64"
      sha256 "730a702b616bcf58f93686cd285b00307b61e68f6c4cb22312efd78187194423"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779254216-g4389a4/amp-linux-arm64"
      sha256 "62a9e0e1e1e0fb3ea15c65ffd80d39cf5c05fe24896b521ceb52896b0e110274"
    else
      url "https://static.ampcode.com/cli/0.0.1779254216-g4389a4/amp-linux-x64"
      sha256 "c02812f7e1afe4de983b3d14487bb4cbe81213f023f26827ab4238c6c53abc39"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

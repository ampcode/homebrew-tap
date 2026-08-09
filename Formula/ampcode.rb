class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786233956-g40887a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786233956-g40887a/amp-darwin-arm64"
      sha256 "40766391d3bc43f0b15cf2d5c44db12c005d2c4549be3d4cdf19f00c2f2f59b1"
    else
      url "https://static.ampcode.com/cli/0.0.1786233956-g40887a/amp-darwin-x64"
      sha256 "4e7bbfc8c93ddc13d8101cdf4932d76cd3bebdcc2fb9760e39d05d1962a1b5c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786233956-g40887a/amp-linux-arm64"
      sha256 "fcfad2b845affb4c85677efd5174b7359f5c977e25cd5eabb458f5556561d5c0"
    else
      url "https://static.ampcode.com/cli/0.0.1786233956-g40887a/amp-linux-x64"
      sha256 "414dbccd94f69894c4525675a699d2278e820d8f1899479528b4055e3c5e42d0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

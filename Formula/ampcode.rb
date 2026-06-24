class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782285336-g6560cd"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782285336-g6560cd/amp-darwin-arm64"
      sha256 "83fcc980240a6818c9bb350474482d7d44d4205fc7bfc24ccd4680d833c3ce2a"
    else
      url "https://static.ampcode.com/cli/0.0.1782285336-g6560cd/amp-darwin-x64"
      sha256 "21a61febf1bf69367255a13117113467c19b0947bce2c739aa44ff91cec7442f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782285336-g6560cd/amp-linux-arm64"
      sha256 "44ad0edc86ba4822d4c4e84e0bab43917c212fbb4d9ae8b80c1a59c332220f05"
    else
      url "https://static.ampcode.com/cli/0.0.1782285336-g6560cd/amp-linux-x64"
      sha256 "9c7ee010fdffa66039383f6c49f17d1aa85910d026b9a14450a6623bc00e5f15"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

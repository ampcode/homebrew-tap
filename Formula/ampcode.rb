class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793232065-gec0ec2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793232065-gec0ec2/amp-darwin-arm64"
      sha256 "8842d19fd5114d6212204cd472850c1c7616283ed5c7fc750ccbce26be4b9752"
    else
      url "https://static.ampcode.com/cli/0.0.1793232065-gec0ec2/amp-darwin-x64"
      sha256 "1729efa4cba6708625c4e7ced90829ae3086d51b7e2b0e7cf2c0560f88fe81da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793232065-gec0ec2/amp-linux-arm64"
      sha256 "fbcf93b7d8585551d6d48a7a9969d0ec4c485e66be9062f1482e50fa2572a199"
    else
      url "https://static.ampcode.com/cli/0.0.1793232065-gec0ec2/amp-linux-x64"
      sha256 "346e81edb4e688b5f89a413f85162a17031becbe9f0b7d33e2752ad40b734cbc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

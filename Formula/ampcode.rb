class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792730408-g23e163"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792730408-g23e163/amp-darwin-arm64"
      sha256 "b1bf3915b8e83abce243c8efb878e69027268f1dbe8ceb295bb7e4880061263e"
    else
      url "https://static.ampcode.com/cli/0.0.1792730408-g23e163/amp-darwin-x64"
      sha256 "cd4e7cd28adda91736b91d62219088cff41bbd80b24f72298ce17514d128a47a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792730408-g23e163/amp-linux-arm64"
      sha256 "9d81a3794165e77616ebad2d8698854174959ad4b112325c2114dcf25870b3d3"
    else
      url "https://static.ampcode.com/cli/0.0.1792730408-g23e163/amp-linux-x64"
      sha256 "fe596c18b8cecf2798640f9920aa15028ad89e8d3c3764da7eac1d5857b6f274"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

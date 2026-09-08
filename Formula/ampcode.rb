class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788854443-g7f007d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788854443-g7f007d/amp-darwin-arm64"
      sha256 "40d1bf05f739612d6a705e99c96779d8f5b61ee67147e3ff0824384b2c75dd5f"
    else
      url "https://static.ampcode.com/cli/0.0.1788854443-g7f007d/amp-darwin-x64"
      sha256 "5f50a951bf72c9e57573fc0ccfc21a226b6acaac953099fc48da246a6a020035"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788854443-g7f007d/amp-linux-arm64"
      sha256 "3b5e40ecb443c73b4625179c511e18c9a8c13792fcf11deba4207f1346af21a2"
    else
      url "https://static.ampcode.com/cli/0.0.1788854443-g7f007d/amp-linux-x64"
      sha256 "cf6feaacfa6eb2eec00f4de05c6a365dc5b6c015a5d9001e2fdfa97f48a56602"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

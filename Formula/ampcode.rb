class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789984754-g4af04f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789984754-g4af04f/amp-darwin-arm64"
      sha256 "65e69b869e2341e950ec8b714e21fbba5d4a56db4553eaefeae17c49995e5911"
    else
      url "https://static.ampcode.com/cli/0.0.1789984754-g4af04f/amp-darwin-x64"
      sha256 "3e49ff9adebb87d9a508464e639dad843818c5e2c9a6d3b5b6c658537d48ad62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789984754-g4af04f/amp-linux-arm64"
      sha256 "165ed6dfd0049c136303f53af4ba210a18b32842514a688163187ba6a4a08c58"
    else
      url "https://static.ampcode.com/cli/0.0.1789984754-g4af04f/amp-linux-x64"
      sha256 "821234732bccd44c4bddf76790d96711151fc5f0dc6769bb65d08cf67fd43746"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

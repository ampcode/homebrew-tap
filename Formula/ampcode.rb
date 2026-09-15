class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789459238-ga66e0f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789459238-ga66e0f/amp-darwin-arm64"
      sha256 "fc8d5956bdcff8ac0a76d3292ce2f073faf6ef8e79ecc7f2c4ca07189c8fcf2c"
    else
      url "https://static.ampcode.com/cli/0.0.1789459238-ga66e0f/amp-darwin-x64"
      sha256 "fec2f02645a35433bb89bd6f50847e811da958d86edbad2f547db11a8d178bd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789459238-ga66e0f/amp-linux-arm64"
      sha256 "73b2cbad676075bc70d50813966e30f591bb8e189de87ae19f43ac7b5fb22d62"
    else
      url "https://static.ampcode.com/cli/0.0.1789459238-ga66e0f/amp-linux-x64"
      sha256 "59edb23120b25753eab65817475534e52626ea683e02bea55e29a63d9a88a2f9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

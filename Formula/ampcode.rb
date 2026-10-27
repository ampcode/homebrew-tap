class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793059276-g2394d3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793059276-g2394d3/amp-darwin-arm64"
      sha256 "6dc8e997477501013d4d9ea6c4c20f1e161d9563105ee8a19cbed1d95fd8e018"
    else
      url "https://static.ampcode.com/cli/0.0.1793059276-g2394d3/amp-darwin-x64"
      sha256 "d52b58c047e37835261d4a8209c8bb8ea5e13babc832fd550c31907fa671a559"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793059276-g2394d3/amp-linux-arm64"
      sha256 "cbaca361f64da2e419bd4f869e38a5ec0313a77a9c735f48f9271f7a1093cea7"
    else
      url "https://static.ampcode.com/cli/0.0.1793059276-g2394d3/amp-linux-x64"
      sha256 "2a0958a7650a8f4e217ac0195d2ce9f105e417d6eb3b9cbeab2bc0fdf51c94d0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

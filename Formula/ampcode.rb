class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785228716-gedda19"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785228716-gedda19/amp-darwin-arm64"
      sha256 "d30dc48df4ee4792c5f9394ff36bc5fab89baa5be796871ebf8fc98c4be48021"
    else
      url "https://static.ampcode.com/cli/0.0.1785228716-gedda19/amp-darwin-x64"
      sha256 "ebc7afe842e4c52be77cbdf79bd2d9ef93e5e1cca5ea58918af62a31cfaf716e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785228716-gedda19/amp-linux-arm64"
      sha256 "0454136370f730b0ebcd1743be6f513914c0e0f786f9a448258dd6a157ef98ef"
    else
      url "https://static.ampcode.com/cli/0.0.1785228716-gedda19/amp-linux-x64"
      sha256 "ef2493a689a661c8d2f3faeb10c0de9f28faf350ec5b51264a050547eb7b4c9f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784650905-gcc3495"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784650905-gcc3495/amp-darwin-arm64"
      sha256 "d6aebf08abd72d65eaf257f458cdc7027c54aa170ec38b0ac97d9b5f48f1e768"
    else
      url "https://static.ampcode.com/cli/0.0.1784650905-gcc3495/amp-darwin-x64"
      sha256 "70047688ede6ee461fa9ada4e16722e8775ff0dfa6434859b2c7338035da9588"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784650905-gcc3495/amp-linux-arm64"
      sha256 "0992c15b9f6b88f372af7ac67dc169c8c0e1b2d26418f46556bb3d4d0a32fbb8"
    else
      url "https://static.ampcode.com/cli/0.0.1784650905-gcc3495/amp-linux-x64"
      sha256 "b8fd8cde911c38b9266248dcaa22a8279f5e8fa8d2ee6e970c91d3c1af00ff68"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

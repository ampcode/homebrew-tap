class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789372854-ge954c8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789372854-ge954c8/amp-darwin-arm64"
      sha256 "1c397c468c8dfd2c2497f11fe7e4c2aee61f5e0c64c712cf1a7c78a775480fd4"
    else
      url "https://static.ampcode.com/cli/0.0.1789372854-ge954c8/amp-darwin-x64"
      sha256 "c7298d2b2372a10d6ff669dcd940af72d20d4f325927a7e818a9df2ca17c018d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789372854-ge954c8/amp-linux-arm64"
      sha256 "dce0532722ba62426f976b672e62450701cf06556332b760689d1ce5399f88db"
    else
      url "https://static.ampcode.com/cli/0.0.1789372854-ge954c8/amp-linux-x64"
      sha256 "77985a09ebe4be36099cd985a68ac5028e76da3406a3bd769577993557630dae"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

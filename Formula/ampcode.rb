class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780726371-g42083c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780726371-g42083c/amp-darwin-arm64"
      sha256 "e2a5911be3500051b347296401571c7947c210d5ee6eb27a615c0aaeb6821c41"
    else
      url "https://static.ampcode.com/cli/0.0.1780726371-g42083c/amp-darwin-x64"
      sha256 "fe86106ae4d6b7e3fc6045506d1406010a810afa520fd6921f478176cef8d598"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780726371-g42083c/amp-linux-arm64"
      sha256 "02b41c968e06330d0f1bac3f340ce9f6f7cc6decda79b1bf67dc072bf9b1a855"
    else
      url "https://static.ampcode.com/cli/0.0.1780726371-g42083c/amp-linux-x64"
      sha256 "96e2377b21dd0a4df95133337bca9327458b3f2cb766a2f13a0e643962095bd4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790926488-g24b332"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790926488-g24b332/amp-darwin-arm64"
      sha256 "cec785dfa18a7da1f9bf282e36f4f36b15723a79f02359754d342181116088b0"
    else
      url "https://static.ampcode.com/cli/0.0.1790926488-g24b332/amp-darwin-x64"
      sha256 "afad2088c21a972f45aa19193f1f88f19baf510e3f1b6424ab6ed2501cf776c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790926488-g24b332/amp-linux-arm64"
      sha256 "f54233f6d0d8f538e71981c105edcf80cd2d6bef8080c154110ddccd2217abc9"
    else
      url "https://static.ampcode.com/cli/0.0.1790926488-g24b332/amp-linux-x64"
      sha256 "c32b4aa283df1eeb4a39c9a26e2a11e17d43e6c5d2b0f0fc69971e5ea08c941a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790352060-g26b83c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790352060-g26b83c/amp-darwin-arm64"
      sha256 "8e08b2df8a96dff573446f6d725017fa55c20016181b5101a36ce8e1ef35452c"
    else
      url "https://static.ampcode.com/cli/0.0.1790352060-g26b83c/amp-darwin-x64"
      sha256 "fa8b594f4c264eabaa68277a5e7bffc84d39e37b4fd9b06496c50152b02da113"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790352060-g26b83c/amp-linux-arm64"
      sha256 "f3c46fb898dd7838c7ce27d81d4b41b5466eb7bc90bd668f174506540fb7d5bd"
    else
      url "https://static.ampcode.com/cli/0.0.1790352060-g26b83c/amp-linux-x64"
      sha256 "a629e5e0c729d33b61d622d86b203d724eb4dfaf1655adfa98ef1044cf5c3f90"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

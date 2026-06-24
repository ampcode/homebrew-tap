class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782297493-ge3b220"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782297493-ge3b220/amp-darwin-arm64"
      sha256 "9f3edf3e9b10f83ed3afd41b7b28ca425882d9e1ac35a1294a4c57a6845f6690"
    else
      url "https://static.ampcode.com/cli/0.0.1782297493-ge3b220/amp-darwin-x64"
      sha256 "83c8a147fb13c4889f2b0ffaa24734a788e3ab31837c6c3bd0d496b3e4e6db45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782297493-ge3b220/amp-linux-arm64"
      sha256 "97bcbc6ed48fe39b84b86f12b395a2970c6793ba3330445ad887399ef2850dce"
    else
      url "https://static.ampcode.com/cli/0.0.1782297493-ge3b220/amp-linux-x64"
      sha256 "7ceb6be0e99be369c6c72699a8677fbc7fec2ef5b6e866c661251b5ede2bf8ab"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

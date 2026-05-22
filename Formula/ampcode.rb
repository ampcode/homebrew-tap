class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779440370-gd535e3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779440370-gd535e3/amp-darwin-arm64"
      sha256 "f209d8f61e48ecca73cea680ee465276cf88910dd465b05430f83020615ce6b3"
    else
      url "https://static.ampcode.com/cli/0.0.1779440370-gd535e3/amp-darwin-x64"
      sha256 "00d62ad5aad057324b66cbb2f8f9cd3b3a8dd427d6254baca7e5959e701a1c97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779440370-gd535e3/amp-linux-arm64"
      sha256 "e876656172c3f47b08e5a1b7f4b91ae2a230620cecdf45853886c98d88f79b98"
    else
      url "https://static.ampcode.com/cli/0.0.1779440370-gd535e3/amp-linux-x64"
      sha256 "c6249523821c6a8618f580b15ad9b0e9f2edcffe6c920dc03bd92ccdaca95cec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

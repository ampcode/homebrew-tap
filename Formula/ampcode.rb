class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784938774-g22b3fc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784938774-g22b3fc/amp-darwin-arm64"
      sha256 "2020ba14fae563cacada8117dacfb44f9947a68e59acd8dcb5f29a56f866017d"
    else
      url "https://static.ampcode.com/cli/0.0.1784938774-g22b3fc/amp-darwin-x64"
      sha256 "706f445bf676c6bfcb24efead837335d5aad51a5be1e997a2c52dc5a19825929"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784938774-g22b3fc/amp-linux-arm64"
      sha256 "5f4ee1257d452ada22b97d491ddfda82dae057e5609be70cf7c7de61dc9f8af7"
    else
      url "https://static.ampcode.com/cli/0.0.1784938774-g22b3fc/amp-linux-x64"
      sha256 "a7c1c72f5de8966912fae2fbcaabffa32807878653a6a5cedde48fe2c02cb1ec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

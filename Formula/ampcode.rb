class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789473652-g8f32ef"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789473652-g8f32ef/amp-darwin-arm64"
      sha256 "0e48230c27d7dbf2d9aaa4a6b08a63e35abbe419d147db0819ce0867dd89fc32"
    else
      url "https://static.ampcode.com/cli/0.0.1789473652-g8f32ef/amp-darwin-x64"
      sha256 "66f74accaf0c128ef2afbb254c763838e516a155ae658cdc05846c8aefe7668d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789473652-g8f32ef/amp-linux-arm64"
      sha256 "0e6dec3d281b672cbe0c6fac6ee2941484e9d1f5bced05082b9587173a6f8c5e"
    else
      url "https://static.ampcode.com/cli/0.0.1789473652-g8f32ef/amp-linux-x64"
      sha256 "138adb8b0f4f66454676c18ca6787bb72831bdb4f5511174a70aa692c7f20bdd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

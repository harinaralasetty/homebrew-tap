class Underhood < Formula
  desc "Offline static inspector for macOS apps and Windows executables"
  homepage "https://github.com/harinaralasetty/underhood"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harinaralasetty/underhood/releases/download/v0.1.0/underhood_0.1.0_darwin_arm64.tar.gz"
      sha256 "609a31a2dcea87c0dfe3ac880ab341837366f15330b8edd78fd8d203856c3f4f"
    end
    on_intel do
      url "https://github.com/harinaralasetty/underhood/releases/download/v0.1.0/underhood_0.1.0_darwin_amd64.tar.gz"
      sha256 "72e941c3841d2fc4d572b73be58fd787def2990d15972eb4fcfca2d76717be17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/harinaralasetty/underhood/releases/download/v0.1.0/underhood_0.1.0_linux_arm64.tar.gz"
      sha256 "769f2a8c981613701558c4af538b1e130403b35bffcb05a63b148408433eb893"
    end
    on_intel do
      url "https://github.com/harinaralasetty/underhood/releases/download/v0.1.0/underhood_0.1.0_linux_amd64.tar.gz"
      sha256 "4962f31b26f436d8798c6dc363e706d671cabc69f09511e34961ba8bad27112a"
    end
  end

  def install
    bin.install "underhood"
  end

  test do
    assert_match "underhood #{version}", shell_output("#{bin}/underhood --version")
  end
end
